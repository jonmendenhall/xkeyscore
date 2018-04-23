.class public Lcom/amazonaws/internal/config/InternalConfig;
.super Ljava/lang/Object;
.source "InternalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/internal/config/InternalConfig$Factory;
    }
.end annotation


# static fields
.field private static final SERVICE_REGION_DELIMITOR:Ljava/lang/String; = "/"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final defaultSignerConfig:Lcom/amazonaws/internal/config/SignerConfig;

.field private final hostRegexToRegionMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/HttpClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final regionSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceRegionSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceSigners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazonaws/internal/config/InternalConfig;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/config/InternalConfig;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->getDefaultSigner()Lcom/amazonaws/internal/config/SignerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->defaultSignerConfig:Lcom/amazonaws/internal/config/SignerConfig;

    .line 45
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->getDefaultRegionSigners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->regionSigners:Ljava/util/Map;

    .line 46
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->getDefaultServiceSigners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->serviceSigners:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->getDefaultServiceRegionSigners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->serviceRegionSigners:Ljava/util/Map;

    .line 48
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->getDefaultHttpClients()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->httpClients:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->getDefaultHostRegexToRegionMappings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->hostRegexToRegionMappings:Ljava/util/List;

    return-void
.end method

.method private static getDefaultHostRegexToRegionMappings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3\\.amazonaws\\.com"

    const-string v3, "us-east-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-external-1\\.amazonaws\\.com"

    const-string v3, "us-east-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com"

    const-string v3, "us-gov-west-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getDefaultHttpClients()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/HttpClientConfig;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AmazonCloudWatchClient"

    .line 110
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "monitoring"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonSimpleDBClient"

    .line 111
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "sdb"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonSimpleEmailServiceClient"

    .line 112
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "email"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AWSSecurityTokenServiceClient"

    .line 113
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "sts"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonCognitoIdentityClient"

    .line 114
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "cognito-identity"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonCognitoIdentityProviderClient"

    .line 115
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "cognito-idp"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonCognitoSyncClient"

    .line 116
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "cognito-sync"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonKinesisFirehoseClient"

    .line 117
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "firehose"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AWSIotClient"

    .line 118
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "execute-api"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonLexRuntimeClient"

    .line 119
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "runtime.lex"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonPinpointClient"

    .line 120
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "mobiletargeting"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonPinpointAnalyticsClient"

    .line 121
    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "mobileanalytics"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultRegionSigners()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "eu-central-1"

    .line 128
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn-north-1"

    .line 129
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultServiceRegionSigners()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "s3/eu-central-1"

    .line 136
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/cn-north-1"

    .line 137
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/us-east-2"

    .line 138
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/ca-central-1"

    .line 139
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/ap-south-1"

    .line 140
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/ap-northeast-2"

    .line 141
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/eu-west-2"

    .line 142
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultServiceSigners()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ec2"

    .line 149
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "QueryStringSignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "email"

    .line 150
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS3SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3"

    .line 151
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "S3SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdb"

    .line 152
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "QueryStringSignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "runtime.lex"

    .line 153
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AmazonLexV4Signer"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "polly"

    .line 154
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AmazonPollyCustomPresigner"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getDefaultSigner()Lcom/amazonaws/internal/config/SignerConfig;
    .locals 2

    .line 159
    new-instance v0, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v1, "AWS4SignerType"

    invoke-direct {v0, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method dump()V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultSignerConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->defaultSignerConfig:Lcom/amazonaws/internal/config/SignerConfig;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serviceRegionSigners: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->serviceRegionSigners:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "regionSigners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->regionSigners:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serviceSigners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->serviceSigners:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hostRegexToRegionMappings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->hostRegexToRegionMappings:Ljava/util/List;

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    sget-object v1, Lcom/amazonaws/internal/config/InternalConfig;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public getHostRegexToRegionMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->hostRegexToRegionMappings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClientConfig(Ljava/lang/String;)Lcom/amazonaws/internal/config/HttpClientConfig;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->httpClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/internal/config/HttpClientConfig;

    return-object p1
.end method

.method public getSignerConfig(Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/internal/config/InternalConfig;->getSignerConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;

    move-result-object p1

    return-object p1
.end method

.method public getSignerConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;
    .locals 2

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    if-eqz p2, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->serviceRegionSigners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/internal/config/SignerConfig;

    if-eqz v0, :cond_1

    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->regionSigners:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/internal/config/SignerConfig;

    if-eqz p2, :cond_2

    return-object p2

    .line 95
    :cond_2
    iget-object p2, p0, Lcom/amazonaws/internal/config/InternalConfig;->serviceSigners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/internal/config/SignerConfig;

    if-nez p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/amazonaws/internal/config/InternalConfig;->defaultSignerConfig:Lcom/amazonaws/internal/config/SignerConfig;

    :cond_3
    return-object p1
.end method
