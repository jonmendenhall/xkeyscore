.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;
.super Ljava/lang/Object;
.source "TransferThreadPool.java"


# static fields
.field private static final WAIT_TIME:I = 0xfa

.field private static executorMainTask:Ljava/util/concurrent/ExecutorService;

.field private static executorPartTask:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildExecutor(I)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 81
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    move-object v0, v7

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 88
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 p0, 0x1

    .line 89
    invoke-virtual {v7, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v7
.end method

.method public static closeThreadPool()V
    .locals 2

    .line 50
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;

    .line 52
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 53
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 32
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 33
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->buildExecutor(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    .line 35
    :cond_0
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 36
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->buildExecutor(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    throw v1
.end method

.method private static shutdown(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v0, 0xfa

    .line 66
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->init()V

    .line 42
    instance-of v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
