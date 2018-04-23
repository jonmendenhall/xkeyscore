.class public Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"


# static fields
.field static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final listener:Lcom/amazonaws/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->createNewExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazonaws/event/ProgressListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    return-object p0
.end method

.method static createNewExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 116
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;

    invoke-direct {v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 97
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/event/ProgressListener;",
            "Lcom/amazonaws/event/ProgressEvent;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$1;-><init>(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-direct {v0, p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>(Lcom/amazonaws/event/ProgressListener;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected getListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazonaws/event/ProgressListener;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;-><init>(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
