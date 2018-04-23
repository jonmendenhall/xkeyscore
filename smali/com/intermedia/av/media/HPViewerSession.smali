.class public Lcom/intermedia/av/media/HPViewerSession;
.super Ljava/lang/Object;
.source "HPViewerSession.java"

# interfaces
.implements Lcom/intermedia/network/BroadcastSocketListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HPViewerSession"


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final broadcast:Lcom/intermedia/model/Broadcast;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private messageReceivedRunnable:Ljava/lang/Runnable;

.field private final segmentToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private socket:Lcom/intermedia/network/BroadcastSocket;

.field private final socketListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/network/HypeSocketAPIListener;",
            ">;"
        }
    .end annotation
.end field

.field private final socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/network/NetworkConnectivityManager;Lcom/intermedia/model/Broadcast;Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/util/logging/DebugReporter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/intermedia/model/Broadcast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/intermedia/av/media/SocketSessionReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/intermedia/av/media/HPViewerSession;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/intermedia/av/media/HPViewerSession;->segmentToken:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/intermedia/av/media/HPViewerSession;->username:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/intermedia/av/media/HPViewerSession;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    .line 74
    iput-object p6, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 75
    iput-object p7, p0, Lcom/intermedia/av/media/HPViewerSession;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    .line 76
    iput-object p8, p0, Lcom/intermedia/av/media/HPViewerSession;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-void
.end method

.method private send(Lcom/intermedia/model/method/SocketMethod;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    invoke-virtual {v0, p1}, Lcom/intermedia/network/BroadcastSocket;->send(Lcom/intermedia/model/method/SocketMethod;)V

    return-void
.end method


# virtual methods
.method public varargs addListeners([Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 1
    .param p1    # [Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public answerQuestion(JJI)V
    .locals 14

    move-object v0, p0

    .line 113
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v1

    const-string v2, "question_answered"

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "number"

    .line 114
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 113
    invoke-virtual {v1, v2, v3}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 115
    new-instance v1, Lcom/intermedia/model/method/SocketMethodAnswerQuestion;

    iget-object v7, v0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    iget-object v2, v0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-virtual {v2}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v6, v1

    move-wide/from16 v10, p3

    move-wide v12, p1

    invoke-direct/range {v6 .. v13}, Lcom/intermedia/model/method/SocketMethodAnswerQuestion;-><init>(Ljava/lang/String;JJJ)V

    invoke-direct {v0, v1}, Lcom/intermedia/av/media/HPViewerSession;->send(Lcom/intermedia/model/method/SocketMethod;)V

    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    instance-of p1, p1, Lcom/intermedia/av/media/HPViewerSession;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/intermedia/av/media/HPViewerSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/av/media/HPViewerSession;

    invoke-virtual {p1, p0}, Lcom/intermedia/av/media/HPViewerSession;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocketListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getSocketListeners()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocketSessionReporter()Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getSocketSessionReporter()Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSegmentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getSegmentToken()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocket()Lcom/intermedia/network/BroadcastSocket;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getSocket()Lcom/intermedia/network/BroadcastSocket;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getMessageReceivedRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPViewerSession;->getMessageReceivedRunnable()Ljava/lang/Runnable;

    move-result-object p1

    if-nez v1, :cond_17

    if-eqz p1, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    :goto_a
    return v2

    :cond_18
    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcast()Lcom/intermedia/model/Broadcast;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    return-object v0
.end method

.method public getConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-object v0
.end method

.method public getMessageReceivedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->messageReceivedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSegmentToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->segmentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSocket()Lcom/intermedia/network/BroadcastSocket;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    return-object v0
.end method

.method public getSocketListeners()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/network/HypeSocketAPIListener;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    return-object v0
.end method

.method public getSocketSessionReporter()Lcom/intermedia/av/media/SocketSessionReporter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getContext()Landroid/content/Context;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocketListeners()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocketSessionReporter()Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSegmentToken()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getUsername()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocket()Lcom/intermedia/network/BroadcastSocket;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getMessageReceivedRunnable()Ljava/lang/Runnable;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public join()V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    iget-object v2, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/av/media/HPViewerSession;->segmentToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 93
    invoke-virtual {v1}, Lcom/intermedia/model/Broadcast;->socketUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/intermedia/av/media/HPViewerSession;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    iget-object v1, p0, Lcom/intermedia/av/media/HPViewerSession;->context:Landroid/content/Context;

    .line 94
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v7, p0, Lcom/intermedia/av/media/HPViewerSession;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/network/NetworkConnectivityManager;Landroid/support/v4/content/LocalBroadcastManager;Lcom/intermedia/util/logging/DebugReporter;)V

    .line 95
    new-instance v8, Lcom/intermedia/network/BroadcastSocket;

    iget-object v2, p0, Lcom/intermedia/av/media/HPViewerSession;->username:Ljava/lang/String;

    new-instance v4, Lcom/intermedia/network/SocketMessageDispatcher;

    invoke-direct {v4}, Lcom/intermedia/network/SocketMessageDispatcher;-><init>()V

    iget-object v5, p0, Lcom/intermedia/av/media/HPViewerSession;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    iget-object v7, p0, Lcom/intermedia/av/media/HPViewerSession;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    move-object v1, v8

    move-object v3, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/intermedia/network/BroadcastSocket;-><init>(Ljava/lang/String;Lcom/intermedia/network/BroadcastSocketListener;Lcom/intermedia/network/SocketMessageDispatcher;Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/intermedia/util/logging/DebugReporter;)V

    iput-object v8, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    .line 97
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    invoke-virtual {v0}, Lcom/intermedia/network/BroadcastSocket;->connect()V

    return-void
.end method

.method public leaveBroadcast()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    invoke-virtual {v0}, Lcom/intermedia/network/BroadcastSocket;->release()V

    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->subscribe()V

    .line 143
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/network/HypeSocketAPIListener;

    .line 144
    invoke-interface {v1}, Lcom/intermedia/network/HypeSocketAPIListener;->broadcastConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized onMessageReceived(Lcom/intermedia/model/message/SocketMessage;)V
    .locals 2
    .param p1    # Lcom/intermedia/model/message/SocketMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/network/HypeSocketAPIListener;

    .line 151
    invoke-virtual {p1, v1}, Lcom/intermedia/model/message/SocketMessage;->call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit p0

    throw p1
.end method

.method public onSocketConnectionFailed()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socketListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/network/HypeSocketAPIListener;

    .line 158
    invoke-interface {v1}, Lcom/intermedia/network/HypeSocketAPIListener;->broadcastSocketConnectionFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendChatVisibilityToggled(Z)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/intermedia/model/method/SocketMethodChatVisibilityToggled;

    iget-object v1, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 127
    invoke-virtual {v2}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/intermedia/model/method/SocketMethodChatVisibilityToggled;-><init>(Ljava/lang/String;JZ)V

    .line 126
    invoke-direct {p0, v0}, Lcom/intermedia/av/media/HPViewerSession;->send(Lcom/intermedia/model/method/SocketMethod;)V

    :cond_0
    return-void
.end method

.method public sendMessage(Lcom/intermedia/model/ChatMessage;)V
    .locals 7
    .param p1    # Lcom/intermedia/model/ChatMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    new-instance v6, Lcom/intermedia/model/method/SocketMethodInteraction;

    iget-object v1, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-virtual {v0}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "chat"

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethodInteraction;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/intermedia/model/ChatMessage;)V

    invoke-direct {p0, v6}, Lcom/intermedia/av/media/HPViewerSession;->send(Lcom/intermedia/model/method/SocketMethod;)V

    return-void
.end method

.method public sendUseExtraLife(J)V
    .locals 7

    .line 136
    new-instance v6, Lcom/intermedia/model/method/SocketMethodUseExtraLife;

    iget-object v1, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-virtual {v0}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, v6

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethodUseExtraLife;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p0, v6}, Lcom/intermedia/av/media/HPViewerSession;->send(Lcom/intermedia/model/method/SocketMethod;)V

    return-void
.end method

.method public setMessageReceivedRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/intermedia/av/media/HPViewerSession;->messageReceivedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setSocket(Lcom/intermedia/network/BroadcastSocket;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/intermedia/av/media/HPViewerSession;->socket:Lcom/intermedia/network/BroadcastSocket;

    return-void
.end method

.method public subscribe()V
    .locals 4

    .line 108
    new-instance v0, Lcom/intermedia/model/method/SocketMethodSubscribe;

    iget-object v1, p0, Lcom/intermedia/av/media/HPViewerSession;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/intermedia/av/media/HPViewerSession;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-virtual {v2}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/model/method/SocketMethodSubscribe;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/intermedia/av/media/HPViewerSession;->send(Lcom/intermedia/model/method/SocketMethod;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HPViewerSession(broadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socketListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocketListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectivityManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socketSessionReporter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocketSessionReporter()Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debugReporter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", segmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSegmentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getSocket()Lcom/intermedia/network/BroadcastSocket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageReceivedRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPViewerSession;->getMessageReceivedRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
