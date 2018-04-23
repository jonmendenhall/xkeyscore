.class public Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
.super Ljava/lang/Object;
.source "MultiFactorAuthentication.java"


# instance fields
.field private deviceSerialNumber:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->deviceSerialNumber:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->deviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->deviceSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->token:Ljava/lang/String;

    return-void
.end method

.method public withDeviceSerialNumber(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->setDeviceSerialNumber(Ljava/lang/String;)V

    return-object p0
.end method

.method public withToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->setToken(Ljava/lang/String;)V

    return-object p0
.end method
