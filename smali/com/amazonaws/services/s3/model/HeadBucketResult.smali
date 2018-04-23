.class public Lcom/amazonaws/services/s3/model/HeadBucketResult;
.super Ljava/lang/Object;
.source "HeadBucketResult.java"


# instance fields
.field private bucketRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketRegion()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/HeadBucketResult;->bucketRegion:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketRegion(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketResult;->bucketRegion:Ljava/lang/String;

    return-void
.end method

.method public withBucketRegion(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->setBucketRegion(Ljava/lang/String;)V

    return-object p0
.end method
