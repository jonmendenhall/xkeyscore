.class public Lcom/onecode/s3/model/S3BucketData;
.super Ljava/lang/Object;
.source "S3BucketData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onecode/s3/model/S3BucketData$Builder;
    }
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private s3Credentials:Lcom/onecode/s3/model/S3Credentials;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onecode/s3/model/S3BucketData$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/onecode/s3/model/S3BucketData;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/onecode/s3/model/S3BucketData;Lcom/onecode/s3/model/S3Credentials;)Lcom/onecode/s3/model/S3Credentials;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/onecode/s3/model/S3BucketData;->s3Credentials:Lcom/onecode/s3/model/S3Credentials;

    return-object p1
.end method

.method static synthetic access$202(Lcom/onecode/s3/model/S3BucketData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/onecode/s3/model/S3BucketData;->region:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/onecode/s3/model/S3BucketData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/onecode/s3/model/S3BucketData;->bucket:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/onecode/s3/model/S3BucketData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/onecode/s3/model/S3BucketData;->key:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getS3Credentials()Lcom/onecode/s3/model/S3Credentials;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData;->s3Credentials:Lcom/onecode/s3/model/S3Credentials;

    return-object v0
.end method
