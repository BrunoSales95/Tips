import boto3
import botocore

def get_sts_client(aws_service, **kwargs):
    try:
        endpoint_url = None
        sts = boto3.client("sts", endpoint_url=endpoint_url)
    except botocore.exceptions.ClientError as e:
        print("Ocorreu um erro ao realizar a obtenção do client sts")
        raise e
    if "role" in kwargs:
        role = kwargs["role"]
    else:
        role = "octopusmngt"
    if "session_name" in kwargs:
        session_name = kwargs.get("session_name","DataAnalityc")
    else:
        session_name = "DataAnalityc"
    try:
        role = sts.assume_role(
            RoleArn="arn:aws:iam::{}:role/{}".format(kwargs["Id"],role),
            RoleSessionName=session_name
        )
    except botocore.exceptions.ClientError as e:
        raise e
    try:    
        endpoint_url = None
        client = boto3.client(
            aws_service,
            aws_access_key_id=role['Credentials']['AccessKeyId'],
            aws_secret_access_key=role['Credentials']['SecretAccessKey'],
            aws_session_token=role['Credentials']['SessionToken'],
            endpoint_url=endpoint_url,
        )
        return client
    except botocore.exceptions.ClientError as e:
        raise e
def get_sts_resource(aws_service, **kwargs):
    try:
        endpoint_url = None
        sts = boto3.client("sts", endpoint_url=endpoint_url)
    except botocore.exceptions.ClientError as e:
        print("Ocorreu um erro ao realizar a obtenção do client sts")
        raise e
    if "role" in kwargs:
        role = kwargs["role"]
    else:
        role = "octopusmngt"
    if "session_name" in kwargs:
        session_name = kwargs.get("session_name","DataAnalityc")
    else:
        session_name = "DataAnalityc"
    try:
        role = sts.assume_role(
            RoleArn="arn:aws:iam::{}:role/{}".format(kwargs["Id"],role),
            RoleSessionName=session_name
        )
    except botocore.exceptions.ClientError as e:
        raise e   
    try:    
        endpoint_url = None
        client = boto3.client(
            aws_service,
            aws_access_key_id=role['Credentials']['AccessKeyId'],
            aws_secret_access_key=role['Credentials']['SecretAccessKey'],
            aws_session_token=role['Credentials']['SessionToken'],
            endpoint_url=endpoint_url,
        )
        return client
    except botocore.exceptions.ClientError as e:
        raise e
        
def executar(args,cotext):
  s3_client_resource = get_sts_resource("s3", Id="1234", role="Projeteo_Service")
  s3_client = get_sts_client("s3", Id="1234", role="Projeto_Service")
