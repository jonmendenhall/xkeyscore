.class Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;
.super Ljava/lang/Object;
.source "FilterStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/s3/model/Filter;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->instance:Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->instance:Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/Filter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 43
    :cond_0
    new-instance v2, Lcom/amazonaws/services/s3/model/Filter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/Filter;-><init>()V

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return-object v2

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v3, "S3Key"

    .line 50
    invoke-virtual {p1, v3, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/Filter;->withS3KeyFilter(Lcom/amazonaws/services/s3/model/S3KeyFilter;)Lcom/amazonaws/services/s3/model/Filter;

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    return-object v2
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/Filter;

    move-result-object p1

    return-object p1
.end method
