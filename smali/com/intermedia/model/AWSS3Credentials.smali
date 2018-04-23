.class public Lcom/intermedia/model/AWSS3Credentials;
.super Ljava/lang/Object;
.source "AWSS3Credentials.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSSessionCredentials;


# static fields
.field private static final TAG:Ljava/lang/String; = "AWSS3Credentials"


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private expiration:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 35
    instance-of p1, p1, Lcom/intermedia/model/AWSS3Credentials;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/AWSS3Credentials;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/AWSS3Credentials;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/AWSS3Credentials;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/AWSS3Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/AWSS3Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/AWSS3Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getExpiration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/AWSS3Credentials;->getExpiration()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/intermedia/model/AWSS3Credentials;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/intermedia/model/AWSS3Credentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/intermedia/model/AWSS3Credentials;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/intermedia/model/AWSS3Credentials;->expiration:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/intermedia/model/AWSS3Credentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/intermedia/model/AWSS3Credentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 35
    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getExpiration()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/intermedia/model/AWSS3Credentials;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/intermedia/model/AWSS3Credentials;->expiration:Ljava/lang/String;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/intermedia/model/AWSS3Credentials;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/intermedia/model/AWSS3Credentials;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWSS3Credentials(accessKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secretKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/AWSS3Credentials;->getExpiration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
