.class public final Lcom/amazonaws/http/IdleConnectionReaper;
.super Ljava/lang/Thread;
.source "IdleConnectionReaper.java"


# static fields
.field private static final CONNECTION_MANAGERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINUTE_IN_SECONDS:I = 0x3c

.field private static final PERIOD_MILLISECONDS:I = 0xea60

.field private static instance:Lcom/amazonaws/http/IdleConnectionReaper;

.field static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private volatile shuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    .line 65
    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "java-sdk-http-connection-reaper"

    .line 69
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/amazonaws/http/IdleConnectionReaper;->setDaemon(Z)V

    return-void
.end method

.method private markShuttingDown()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/amazonaws/http/IdleConnectionReaper;->shuttingDown:Z

    return-void
.end method

.method public static declared-synchronized registerConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)Z
    .locals 2

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v1}, Lcom/amazonaws/http/IdleConnectionReaper;-><init>()V

    sput-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    .line 83
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v1}, Lcom/amazonaws/http/IdleConnectionReaper;->start()V

    .line 85
    :cond_0
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)Z
    .locals 2

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 98
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/amazonaws/http/IdleConnectionReaper;->shutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized shutdown()Z
    .locals 2

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-direct {v1}, Lcom/amazonaws/http/IdleConnectionReaper;->markShuttingDown()V

    .line 160
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;

    invoke-virtual {v1}, Lcom/amazonaws/http/IdleConnectionReaper;->interrupt()V

    .line 161
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 162
    sput-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->instance:Lcom/amazonaws/http/IdleConnectionReaper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 163
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 165
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 157
    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized size()I
    .locals 2

    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 111
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amazonaws/http/IdleConnectionReaper;->shuttingDown:Z

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Shutting down reaper thread."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/32 v0, 0xea60

    .line 116
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    const-class v0, Lcom/amazonaws/http/IdleConnectionReaper;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :try_start_1
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->CONNECTION_MANAGERS:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 128
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v2, 0x3c

    .line 135
    :try_start_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 137
    :try_start_4
    sget-object v2, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to close idle connections"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 128
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 141
    sget-object v1, Lcom/amazonaws/http/IdleConnectionReaper;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Reaper thread: "

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
