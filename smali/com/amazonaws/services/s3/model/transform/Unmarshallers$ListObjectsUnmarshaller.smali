.class public final Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;
.super Ljava/lang/Object;
.source "Unmarshallers.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/Unmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListObjectsUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/s3/model/ObjectListing;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final shouldSDKDecodeResponse:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;->shouldSDKDecodeResponse:Z

    return-void
.end method


# virtual methods
.method public unmarshall(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;-><init>()V

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;->shouldSDKDecodeResponse:Z

    .line 104
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseListBucketObjectsResponse(Ljava/io/InputStream;Z)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->getObjectListing()Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;->unmarshall(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object p1

    return-object p1
.end method
