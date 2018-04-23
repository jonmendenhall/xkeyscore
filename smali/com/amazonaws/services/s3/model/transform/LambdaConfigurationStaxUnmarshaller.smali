.class Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;
.super Ljava/lang/Object;
.source "LambdaConfigurationStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
        ">;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;->instance:Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLambdaConfig(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/Filter;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/Filter;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 100
    new-instance p4, Lcom/amazonaws/services/s3/model/LambdaConfiguration;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p4, p3, p2}, Lcom/amazonaws/services/s3/model/LambdaConfiguration;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {v1, p4, p3, p2}, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object p4, v1

    .line 104
    :goto_0
    new-instance p2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {p4, p5}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->withFilter(Lcom/amazonaws/services/s3/model/Filter;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static getInstance()Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;->instance:Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 62
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    return-object v2

    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    const-string v8, "Id"

    .line 72
    invoke-virtual {p1, v8, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v8, "Event"

    .line 74
    invoke-virtual {p1, v8, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 75
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v8, "Filter"

    .line 76
    invoke-virtual {p1, v8, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 77
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/Filter;

    move-result-object v7

    goto :goto_0

    :cond_5
    const-string v8, "CloudFunction"

    .line 78
    invoke-virtual {p1, v8, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 79
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_6
    const-string v8, "InvocationRole"

    .line 80
    invoke-virtual {p1, v8, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_7
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v8

    if-ge v8, v0, :cond_1

    move-object v2, p0

    .line 85
    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller;->createLambdaConfig(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/Filter;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
