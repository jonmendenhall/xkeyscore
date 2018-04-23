.class public Lcom/onecode/s3/model/S3Credentials;
.super Ljava/lang/Object;
.source "S3Credentials.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accessKey:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/onecode/s3/model/S3Credentials;->accessKey:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/onecode/s3/model/S3Credentials;->secretKey:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/onecode/s3/model/S3Credentials;->sessionToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/onecode/s3/model/S3Credentials;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/onecode/s3/model/S3Credentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/onecode/s3/model/S3Credentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method
