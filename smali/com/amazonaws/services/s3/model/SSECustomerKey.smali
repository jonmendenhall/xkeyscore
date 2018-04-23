.class public Lcom/amazonaws/services/s3/model/SSECustomerKey;
.super Ljava/lang/Object;
.source "SSECustomerKey.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private final base64EncodedKey:Ljava/lang/String;

.field private base64EncodedMd5:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-void

    .line 66
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption key must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption key must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 112
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 86
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-void

    .line 87
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encryption key must be specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static generateSSECustomerKeyForPresignUrl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    if-nez p0, :cond_0

    .line 252
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 253
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/SSECustomerKey;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/SSECustomerKey;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->withAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedMd5:Ljava/lang/String;

    return-void
.end method

.method public withAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->setAlgorithm(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMd5(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->setMd5(Ljava/lang/String;)V

    return-object p0
.end method
