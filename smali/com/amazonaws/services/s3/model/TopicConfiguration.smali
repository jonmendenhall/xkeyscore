.class public Lcom/amazonaws/services/s3/model/TopicConfiguration;
.super Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.source "TopicConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private topicARN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazonaws/services/s3/model/S3Event;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>(Ljava/util/EnumSet;)V

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->topicARN:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>([Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->topicARN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTopicARN()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->topicARN:Ljava/lang/String;

    return-object v0
.end method

.method public setTopicARN(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->topicARN:Ljava/lang/String;

    return-void
.end method

.method public withTopicARN(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/TopicConfiguration;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/TopicConfiguration;->setTopicARN(Ljava/lang/String;)V

    return-object p0
.end method
