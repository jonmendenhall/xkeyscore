.class public final Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller;
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
    name = "GetBucketMetricsConfigurationUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unmarshall(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseGetBucketMetricsConfigurationResponse(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketMetricsConfigurationHandler;->getResult()Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

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

    .line 430
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$GetBucketMetricsConfigurationUnmarshaller;->unmarshall(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;

    move-result-object p1

    return-object p1
.end method
