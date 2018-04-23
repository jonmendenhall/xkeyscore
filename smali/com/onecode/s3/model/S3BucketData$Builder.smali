.class public Lcom/onecode/s3/model/S3BucketData$Builder;
.super Ljava/lang/Object;
.source "S3BucketData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onecode/s3/model/S3BucketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private s3BucketData:Lcom/onecode/s3/model/S3BucketData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/onecode/s3/model/S3BucketData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onecode/s3/model/S3BucketData;-><init>(Lcom/onecode/s3/model/S3BucketData$1;)V

    iput-object v0, p0, Lcom/onecode/s3/model/S3BucketData$Builder;->s3BucketData:Lcom/onecode/s3/model/S3BucketData;

    return-void
.end method


# virtual methods
.method public build()Lcom/onecode/s3/model/S3BucketData;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData$Builder;->s3BucketData:Lcom/onecode/s3/model/S3BucketData;

    return-object v0
.end method

.method public setBucket(Ljava/lang/String;)Lcom/onecode/s3/model/S3BucketData$Builder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData$Builder;->s3BucketData:Lcom/onecode/s3/model/S3BucketData;

    invoke-static {v0, p1}, Lcom/onecode/s3/model/S3BucketData;->access$302(Lcom/onecode/s3/model/S3BucketData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCredentials(Lcom/onecode/s3/model/S3Credentials;)Lcom/onecode/s3/model/S3BucketData$Builder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData$Builder;->s3BucketData:Lcom/onecode/s3/model/S3BucketData;

    invoke-static {v0, p1}, Lcom/onecode/s3/model/S3BucketData;->access$102(Lcom/onecode/s3/model/S3BucketData;Lcom/onecode/s3/model/S3Credentials;)Lcom/onecode/s3/model/S3Credentials;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/onecode/s3/model/S3BucketData$Builder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData$Builder;->s3BucketData:Lcom/onecode/s3/model/S3BucketData;

    invoke-static {v0, p1}, Lcom/onecode/s3/model/S3BucketData;->access$402(Lcom/onecode/s3/model/S3BucketData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/onecode/s3/model/S3BucketData$Builder;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/onecode/s3/model/S3BucketData$Builder;->s3BucketData:Lcom/onecode/s3/model/S3BucketData;

    invoke-static {v0, p1}, Lcom/onecode/s3/model/S3BucketData;->access$202(Lcom/onecode/s3/model/S3BucketData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
