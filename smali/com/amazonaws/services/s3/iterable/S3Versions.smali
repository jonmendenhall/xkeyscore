.class public final Lcom/amazonaws/services/s3/iterable/S3Versions;
.super Ljava/lang/Object;
.source "S3Versions.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private batchSize:Ljava/lang/Integer;

.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 49
    iput-object p2, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public static forKey(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1

    .line 90
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 91
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Versions;->key:Ljava/lang/String;

    return-object v0
.end method

.method public static inBucket(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1

    .line 61
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withPrefix(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1

    .line 75
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 76
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Versions;->prefix:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBatchSize()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->batchSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getS3()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Versions;Lcom/amazonaws/services/s3/iterable/S3Versions$1;)V

    return-object v0
.end method

.method public withBatchSize(I)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 0

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->batchSize:Ljava/lang/Integer;

    return-object p0
.end method
