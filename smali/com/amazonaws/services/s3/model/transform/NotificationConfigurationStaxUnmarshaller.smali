.class abstract Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;
.super Ljava/lang/Object;
.source "NotificationConfigurationStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
        ">",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createConfiguration()Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract handleXmlEvent(Lcom/amazonaws/services/s3/model/NotificationConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;
    .locals 7
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

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;->createConfiguration()Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    return-object v3

    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 62
    invoke-virtual {p0, v2, p1, v1}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;->handleXmlEvent(Lcom/amazonaws/services/s3/model/NotificationConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "Id"

    .line 64
    invoke-virtual {p1, v5, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v5, "Event"

    .line 66
    invoke-virtual {p1, v5, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->addEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v5, "Filter"

    .line 68
    invoke-virtual {p1, v5, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/Filter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/Filter;)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 73
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p1, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
