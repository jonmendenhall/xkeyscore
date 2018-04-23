.class public Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
.super Lcom/amazonaws/services/s3/model/TopicConfiguration;
.source "BucketNotificationConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicConfiguration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 312
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/TopicConfiguration;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getEvents()Ljava/util/Set;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 340
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getTopicARN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 345
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
