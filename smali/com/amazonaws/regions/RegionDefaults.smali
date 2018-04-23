.class Lcom/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;
.source "RegionDefaults.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-northeast-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sns"

    const-string v3, "sns.ap-northeast-1.amazonaws.com"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-northeast-1.amazonaws.com"

    .line 31
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-northeast-1.amazonaws.com"

    .line 33
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-northeast-1.amazonaws.com"

    .line 34
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-northeast-1.amazonaws.com"

    .line 35
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.ap-northeast-1.amazonaws.com"

    .line 36
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-northeast-1.amazonaws.com"

    .line 37
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-northeast-1.amazonaws.com"

    .line 38
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-northeast-1.amazonaws.com"

    .line 39
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.ap-northeast-1.amazonaws.com"

    .line 41
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.ap-northeast-1.amazonaws.com"

    .line 42
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-northeast-1.amazonaws.com"

    .line 43
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 44
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-ap-northeast-1.amazonaws.com"

    .line 45
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-northeast-1.amazonaws.com"

    .line 46
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-northeast-1.amazonaws.com"

    .line 47
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    .line 48
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 51
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-northeast-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "s3"

    const-string v3, "s3.ap-northeast-2.amazonaws.com"

    .line 53
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-northeast-2.amazonaws.com"

    .line 54
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-northeast-2.amazonaws.com"

    .line 55
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-northeast-2.amazonaws.com"

    .line 56
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.ap-northeast-2.amazonaws.com"

    .line 58
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-northeast-2.amazonaws.com"

    .line 59
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-northeast-2.amazonaws.com"

    .line 60
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-northeast-2.amazonaws.com"

    .line 62
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-northeast-2.amazonaws.com"

    .line 63
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.ap-northeast-2.amazonaws.com"

    .line 64
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.ap-northeast-2.amazonaws.com"

    .line 65
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    .line 66
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.ap-northeast-2.amazonaws.com"

    .line 68
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-northeast-2.amazonaws.com"

    .line 69
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-northeast-2.amazonaws.com"

    .line 70
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-northeast-2.amazonaws.com"

    .line 71
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 73
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-south-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-south-1.amazonaws.com"

    .line 75
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.ap-south-1.amazonaws.com"

    .line 76
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-south-1.amazonaws.com"

    .line 77
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-south-1.amazonaws.com"

    .line 78
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-south-1.amazonaws.com"

    .line 79
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-south-1.amazonaws.com"

    .line 80
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.ap-south-1.amazonaws.com"

    .line 81
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-south-1.amazonaws.com"

    .line 82
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-south-1.amazonaws.com"

    .line 84
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-south-1.amazonaws.com"

    .line 86
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-south-1.amazonaws.com"

    .line 87
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-south-1.amazonaws.com"

    .line 88
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 89
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.ap-south-1.amazonaws.com"

    .line 90
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 92
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-southeast-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "kms"

    const-string v3, "kms.ap-southeast-1.amazonaws.com"

    .line 94
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-ap-southeast-1.amazonaws.com"

    .line 95
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.ap-southeast-1.amazonaws.com"

    .line 96
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-southeast-1.amazonaws.com"

    .line 97
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-southeast-1.amazonaws.com"

    .line 98
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    .line 99
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 101
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-southeast-1.amazonaws.com"

    .line 102
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.ap-southeast-1.amazonaws.com"

    .line 103
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.ap-southeast-1.amazonaws.com"

    .line 104
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-southeast-1.amazonaws.com"

    .line 105
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-southeast-1.amazonaws.com"

    .line 106
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-southeast-1.amazonaws.com"

    .line 107
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-southeast-1.amazonaws.com"

    .line 108
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 110
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-southeast-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ec2"

    const-string v3, "ec2.ap-southeast-2.amazonaws.com"

    .line 112
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-southeast-2.amazonaws.com"

    .line 113
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.ap-southeast-2.amazonaws.com"

    .line 114
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-ap-southeast-2.amazonaws.com"

    .line 115
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-southeast-2.amazonaws.com"

    .line 116
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-southeast-2.amazonaws.com"

    .line 117
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-southeast-2.amazonaws.com"

    .line 118
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-southeast-2.amazonaws.com"

    .line 120
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    .line 121
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.ap-southeast-2.amazonaws.com"

    .line 123
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.ap-southeast-2.amazonaws.com"

    .line 124
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-southeast-2.amazonaws.com"

    .line 125
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-southeast-2.amazonaws.com"

    .line 126
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-southeast-2.amazonaws.com"

    .line 128
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.ap-southeast-2.amazonaws.com"

    .line 129
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-southeast-2.amazonaws.com"

    .line 130
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 131
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 133
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ca-central-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ca-central-1.amazonaws.com"

    .line 135
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.ca-central-1.amazonaws.com"

    .line 136
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 137
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ca-central-1.amazonaws.com"

    .line 138
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.ca-central-1.amazonaws.com"

    .line 140
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ca-central-1.amazonaws.com"

    .line 141
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.ca-central-1.amazonaws.com"

    .line 142
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ca-central-1.amazonaws.com"

    .line 143
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.ca-central-1.amazonaws.com"

    .line 144
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.ca-central-1.amazonaws.com"

    .line 145
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 147
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "eu-central-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "iot"

    const-string v3, "iot.eu-central-1.amazonaws.com"

    .line 149
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.eu-central-1.amazonaws.com"

    .line 150
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 151
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.eu-central-1.amazonaws.com"

    .line 152
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.eu-central-1.amazonaws.com"

    .line 154
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.eu-central-1.amazonaws.com"

    .line 155
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.eu-central-1.amazonaws.com"

    .line 156
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-central-1.amazonaws.com"

    .line 157
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.eu-central-1.amazonaws.com"

    .line 159
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-central-1.amazonaws.com"

    .line 160
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.eu-central-1.amazonaws.com"

    .line 161
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.eu-central-1.amazonaws.com"

    .line 162
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.eu-central-1.amazonaws.com"

    .line 163
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.eu-central-1.amazonaws.com"

    .line 164
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-central-1.amazonaws.com"

    .line 165
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-central-1.amazonaws.com"

    .line 166
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 168
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "eu-west-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "lambda"

    const-string v3, "lambda.eu-west-1.amazonaws.com"

    .line 170
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "machinelearning"

    const-string v3, "machinelearning.eu-west-1.amazonaws.com"

    .line 171
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.eu-west-1.amazonaws.com"

    .line 173
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.eu-west-1.amazonaws.com"

    .line 174
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.eu-west-1.amazonaws.com"

    .line 175
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 176
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.eu-west-1.amazonaws.com"

    .line 177
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-west-1.amazonaws.com"

    .line 178
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.eu-west-1.amazonaws.com"

    .line 179
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-west-1.amazonaws.com"

    .line 180
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly"

    const-string v3, "polly.eu-west-1.amazonaws.com"

    .line 181
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "firehose"

    const-string v3, "firehose.eu-west-1.amazonaws.com"

    .line 182
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.eu-west-1.amazonaws.com"

    .line 183
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-west-1.amazonaws.com"

    .line 185
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.eu-west-1.amazonaws.com"

    .line 187
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "email"

    const-string v3, "email.eu-west-1.amazonaws.com"

    .line 188
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.eu-west-1.amazonaws.com"

    .line 189
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.eu-west-1.amazonaws.com"

    .line 190
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-west-1.amazonaws.com"

    .line 191
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.eu-west-1.amazonaws.com"

    .line 192
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-eu-west-1.amazonaws.com"

    .line 193
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 195
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "eu-west-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.eu-west-2.amazonaws.com"

    .line 197
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.eu-west-2.amazonaws.com"

    .line 199
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.eu-west-2.amazonaws.com"

    .line 200
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-west-2.amazonaws.com"

    .line 201
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-west-2.amazonaws.com"

    .line 202
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.eu-west-2.amazonaws.com"

    .line 203
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 204
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.eu-west-2.amazonaws.com"

    .line 205
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.eu-west-2.amazonaws.com"

    .line 206
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.eu-west-2.amazonaws.com"

    .line 207
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-west-2.amazonaws.com"

    .line 208
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.eu-west-2.amazonaws.com"

    .line 210
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.eu-west-2.amazonaws.com"

    .line 211
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-west-2.amazonaws.com"

    .line 212
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.eu-west-2.amazonaws.com"

    .line 213
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 215
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "sa-east-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ec2"

    const-string v3, "ec2.sa-east-1.amazonaws.com"

    .line 217
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-sa-east-1.amazonaws.com"

    .line 218
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.sa-east-1.amazonaws.com"

    .line 219
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.sa-east-1.amazonaws.com"

    .line 221
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 222
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.sa-east-1.amazonaws.com"

    .line 223
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.sa-east-1.amazonaws.com"

    .line 224
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.sa-east-1.amazonaws.com"

    .line 225
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.sa-east-1.amazonaws.com"

    .line 226
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.sa-east-1.amazonaws.com"

    .line 227
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.sa-east-1.amazonaws.com"

    .line 228
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 230
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-east-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "firehose"

    const-string v3, "firehose.us-east-1.amazonaws.com"

    .line 232
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly"

    const-string v3, "polly.us-east-1.amazonaws.com"

    .line 233
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-east-1.amazonaws.com"

    .line 234
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-east-1.amazonaws.com"

    .line 235
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "email"

    const-string v3, "email.us-east-1.amazonaws.com"

    .line 236
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.us-east-1.amazonaws.com"

    .line 237
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-east-1.amazonaws.com"

    .line 238
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "machinelearning"

    const-string v3, "machinelearning.us-east-1.amazonaws.com"

    .line 239
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-east-1.amazonaws.com"

    .line 241
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-east-1.amazonaws.com"

    .line 243
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 244
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-east-1.amazonaws.com"

    .line 245
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.amazonaws.com"

    .line 247
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-east-1.amazonaws.com"

    .line 248
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "mobileanalytics"

    const-string v3, "mobileanalytics.us-east-1.amazonaws.com"

    .line 249
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "pinpoint"

    const-string v3, "pinpoint.us-east-1.amazonaws.com"

    .line 251
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-east-1.amazonaws.com"

    .line 252
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-east-1.amazonaws.com"

    .line 253
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-east-1.amazonaws.com"

    .line 254
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.us-east-1.amazonaws.com"

    .line 255
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.us-east-1.amazonaws.com"

    .line 256
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.amazonaws.com"

    .line 257
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.us-east-1.amazonaws.com"

    .line 258
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 260
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-east-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-east-2.amazonaws.com"

    .line 262
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.us-east-2.amazonaws.com"

    .line 263
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly"

    const-string v3, "polly.us-east-2.amazonaws.com"

    .line 264
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-east-2.amazonaws.com"

    .line 265
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-east-2.amazonaws.com"

    .line 267
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.us-east-2.amazonaws.com"

    .line 269
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-east-2.amazonaws.com"

    .line 270
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-east-2.amazonaws.com"

    .line 271
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 272
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-east-2.amazonaws.com"

    .line 273
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-east-2.amazonaws.com"

    .line 274
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.us-east-2.amazonaws.com"

    .line 275
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.us-east-2.amazonaws.com"

    .line 276
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-east-2.amazonaws.com"

    .line 277
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-east-2.amazonaws.com"

    .line 278
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-east-2.amazonaws.com"

    .line 279
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 281
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-west-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sqs"

    const-string v3, "sqs.us-west-1.amazonaws.com"

    .line 283
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-west-1.amazonaws.com"

    .line 284
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-west-1.amazonaws.com"

    .line 285
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-west-1.amazonaws.com"

    .line 286
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-us-west-1.amazonaws.com"

    .line 287
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.us-west-1.amazonaws.com"

    .line 288
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.us-west-1.amazonaws.com"

    .line 289
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.us-west-1.amazonaws.com"

    .line 290
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-west-1.amazonaws.com"

    .line 291
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 293
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-west-1.amazonaws.com"

    .line 294
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-west-1.amazonaws.com"

    .line 295
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 297
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-west-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-west-2.amazonaws.com"

    .line 299
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-us-west-2.amazonaws.com"

    .line 300
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "iot"

    const-string v3, "iot.us-west-2.amazonaws.com"

    .line 301
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.us-west-2.amazonaws.com"

    .line 302
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.us-west-2.amazonaws.com"

    .line 303
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-west-2.amazonaws.com"

    .line 304
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-west-2.amazonaws.com"

    .line 305
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-west-2.amazonaws.com"

    .line 306
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sdb"

    const-string v3, "sdb.us-west-2.amazonaws.com"

    .line 308
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-west-2.amazonaws.com"

    .line 309
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-west-2.amazonaws.com"

    .line 310
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-west-2.amazonaws.com"

    .line 311
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "polly"

    const-string v3, "polly.us-west-2.amazonaws.com"

    .line 312
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 313
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "firehose"

    const-string v3, "firehose.us-west-2.amazonaws.com"

    .line 314
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "email"

    const-string v3, "email.us-west-2.amazonaws.com"

    .line 315
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-west-2.amazonaws.com"

    .line 316
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-west-2.amazonaws.com"

    .line 317
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.us-west-2.amazonaws.com"

    .line 318
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-west-2.amazonaws.com"

    .line 319
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 322
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "cn-north-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sts"

    const-string v3, "sts.cn-north-1.amazonaws.com.cn"

    .line 324
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    .line 325
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.cn-north-1.amazonaws.com.cn"

    .line 327
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.cn-north-1.amazonaws.com.cn"

    .line 328
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "ec2"

    const-string v3, "ec2.cn-north-1.amazonaws.com.cn"

    .line 329
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3.cn-north-1.amazonaws.com.cn"

    .line 330
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.cn-north-1.amazonaws.com.cn"

    .line 331
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.cn-north-1.amazonaws.com.cn"

    .line 332
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.cn-north-1.amazonaws.com.cn"

    .line 333
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 335
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-gov-west-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ec2"

    const-string v3, "ec2.us-gov-west-1.amazonaws.com"

    .line 337
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-gov-west-1.amazonaws.com"

    .line 338
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-gov-west-1.amazonaws.com"

    .line 339
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-gov-west-1.amazonaws.com"

    .line 340
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "s3"

    const-string v3, "s3-us-gov-west-1.amazonaws.com"

    .line 341
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "kms"

    const-string v3, "kms.us-gov-west-1.amazonaws.com"

    .line 342
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    .line 343
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sns"

    const-string v3, "sns.us-gov-west-1.amazonaws.com"

    .line 345
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    .line 346
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-gov-west-1.amazonaws.com"

    .line 347
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazonaws/regions/RegionDefaults;->updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private static updateRegion(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getHttpSupport()Ljava/util/Map;

    move-result-object v1

    .line 356
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getHttpsSupport()Ljava/util/Map;

    move-result-object p0

    .line 358
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
