.class public Lcom/amazonaws/auth/BasicAWSCredentials;
.super Ljava/lang/Object;
.source "BasicAWSCredentials.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentials;


# instance fields
.field private final accessKey:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Access key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Secret key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->accessKey:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->secretKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method
