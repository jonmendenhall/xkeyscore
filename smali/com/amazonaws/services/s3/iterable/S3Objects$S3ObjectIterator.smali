.class Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;
.super Ljava/lang/Object;
.source "S3Objects.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/iterable/S3Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "S3ObjectIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

.field final synthetic this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/iterable/S3Objects;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/iterable/S3Objects;Lcom/amazonaws/services/s3/iterable/S3Objects$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Objects;)V

    return-void
.end method

.method private prepareCurrentListing()V
    .locals 2

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentIterator:Ljava/util/Iterator;

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 134
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->getBatchSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    .line 139
    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/iterable/S3Objects;->getS3()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    goto :goto_2

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->this$0:Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/iterable/S3Objects;->getS3()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 144
    :goto_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->prepareCurrentListing()V

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->prepareCurrentListing()V

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;->next()Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
