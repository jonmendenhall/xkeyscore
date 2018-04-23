.class public Lcom/intermedia/av/media/SocketSessionReporter;
.super Ljava/lang/Object;
.source "SocketSessionReporter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;,
        Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;
    }
.end annotation


# static fields
.field private static final MAX_MESSAGES:I = 0x19

.field private static final MIN_SESSION_LENGTH_SECONDS:J = 0xaL


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final gameLastOpenedAt:Ljava/util/Date;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final messagesReceived:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messagesSent:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final socketConnectedAt:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/user/session/SessionManager;)V
    .locals 2
    .param p1    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->gameLastOpenedAt:Ljava/util/Date;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->socketConnectedAt:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;-><init>(Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/av/media/SocketSessionReporter$1;)V

    iput-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->messagesReceived:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;

    invoke-direct {v0, p0, v1}, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;-><init>(Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/av/media/SocketSessionReporter$1;)V

    iput-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->messagesSent:Ljava/util/Map;

    .line 44
    invoke-virtual {p1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter;->username:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "kk:mm:ss:SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter;->dateFormat:Ljava/text/DateFormat;

    .line 46
    iget-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter;->dateFormat:Ljava/text/DateFormat;

    const-string v0, "gmt"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private populate(Lcom/intermedia/util/reporting/ErrorLog;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/intermedia/util/reporting/ErrorLog;
    .locals 5
    .param p1    # Lcom/intermedia/util/reporting/ErrorLog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/neovisionaries/ws/client/WebSocket;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 114
    invoke-static {p2}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "socketState"

    .line 115
    invoke-virtual {p2}, Lcom/neovisionaries/ws/client/WebSocket;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    :cond_0
    const-string p2, "gameLastOpenedAt"

    .line 117
    iget-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/intermedia/av/media/SocketSessionReporter;->gameLastOpenedAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    const/4 p2, 0x0

    .line 120
    iget-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->socketConnectedAt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectedAt-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->messagesSent:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    iget-object v1, p0, Lcom/intermedia/av/media/SocketSessionReporter;->dateFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    goto :goto_1

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->messagesReceived:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    iget-object v1, p0, Lcom/intermedia/av/media/SocketSessionReporter;->dateFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    goto :goto_2

    :cond_3
    return-object p1
.end method


# virtual methods
.method public messageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->messagesReceived:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->messagesSent:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportSendError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/intermedia/model/method/SocketMethod;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lcom/neovisionaries/ws/client/WebSocket;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->username:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/intermedia/av/media/SocketSessionReporter;->populate(Lcom/intermedia/util/reporting/ErrorLog;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Failed to send socket message"

    invoke-direct {v1, v2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {p1, v1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    const-string p3, "method-type"

    .line 107
    invoke-virtual {p1, p3, p2}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public reportSendWhenSocketClosed(Lcom/neovisionaries/ws/client/WebSocket;Lcom/intermedia/model/method/SocketMethod;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/neovisionaries/ws/client/WebSocket;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object p2, p2, Lcom/intermedia/model/method/SocketMethod;->type:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5435c042

    if-eq v0, v1, :cond_1

    const v1, 0x1eafdd4a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "subscribe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const-string p2, "Socket was not open when sending message"

    goto :goto_2

    :pswitch_0
    const-string p2, "Socket was not open when sending subscribe"

    goto :goto_2

    :pswitch_1
    const-string p2, "Socket was not open when sending answer"

    .line 98
    :goto_2
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->username:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/intermedia/av/media/SocketSessionReporter;->populate(Lcom/intermedia/util/reporting/ErrorLog;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    new-instance v1, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;

    invoke-direct {v1, p0, p2}, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;-><init>(Lcom/intermedia/av/media/SocketSessionReporter;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    const-string p2, "unsent-message"

    .line 100
    invoke-virtual {p1, p2, p3}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reportSessionEnded()V
    .locals 5

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/intermedia/av/media/SocketSessionReporter;->gameLastOpenedAt:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 68
    iget-object v2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->socketConnectedAt:Ljava/util/List;

    .line 69
    invoke-static {v2}, Lcom/intermedia/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->username:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/intermedia/av/media/SocketSessionReporter;->populate(Lcom/intermedia/util/reporting/ErrorLog;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    new-instance v2, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;

    const-string v3, "Socket never connected"

    invoke-direct {v2, p0, v3}, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;-><init>(Lcom/intermedia/av/media/SocketSessionReporter;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :cond_0
    return-void
.end method

.method public reportSocketError(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lcom/neovisionaries/ws/client/WebSocket;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/av/media/SocketSessionReporter;->username:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/intermedia/av/media/SocketSessionReporter;->populate(Lcom/intermedia/util/reporting/ErrorLog;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    new-instance v1, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;

    invoke-direct {v1, p0, p2}, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;-><init>(Lcom/intermedia/av/media/SocketSessionReporter;Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p1, v1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->gameLastOpenedAt:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public socketConnected()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/intermedia/av/media/SocketSessionReporter;->socketConnectedAt:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
