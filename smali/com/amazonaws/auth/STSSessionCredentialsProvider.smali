.class public Lcom/amazonaws/auth/STSSessionCredentialsProvider;
.super Ljava/lang/Object;
.source "STSSessionCredentialsProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field public static final DEFAULT_DURATION_SECONDS:I = 0xe10


# instance fields
.field private final securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field private sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

.field private sessionCredentialsExpiration:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/auth/STSSessionCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    return-void
.end method

.method private needsNewSession()Z
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startSession()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    new-instance v1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;-><init>()V

    const/16 v2, 0xe10

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->getSessionToken(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 152
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 155
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->startSession()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->startSession()V

    return-void
.end method

.method public setSTSClientEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->securityTokenService:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;->setEndpoint(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/amazonaws/auth/STSSessionCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-void
.end method
