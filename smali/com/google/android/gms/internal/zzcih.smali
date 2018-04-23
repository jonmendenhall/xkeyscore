.class public final Lcom/google/android/gms/internal/zzcih;
.super Lcom/google/android/gms/internal/zzcjl;


# static fields
.field private static final zzjeo:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzieo:Ljava/util/concurrent/ExecutorService;

.field private zzjef:Lcom/google/android/gms/internal/zzcil;

.field private zzjeg:Lcom/google/android/gms/internal/zzcil;

.field private final zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/zzcik<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzjei:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/zzcik<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzjej:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzjek:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzjel:Ljava/lang/Object;

.field private final zzjem:Ljava/util/concurrent/Semaphore;

.field private volatile zzjen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/internal/zzcih;->zzjeo:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjem:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjei:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Lcom/google/android/gms/internal/zzcij;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcij;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjej:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Lcom/google/android/gms/internal/zzcij;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzcij;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjek:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcih;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcih;->zzjem:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcik<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzcil;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/zzcil;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjej:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcil;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcil;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcil;->zzrk()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzau()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzazu()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcih;->zzjeo:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcih;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcih;->zzjen:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawi()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final zzawj()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzazs()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzazt()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzieo:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzieo:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzieo:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcik;->run()V

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcik;)V

    return-object v0
.end method

.method public final zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcik;->run()V

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcik;)V

    return-object v0
.end method

.method public final zzg(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcik;)V

    return-void
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const-string v1, "Task exception on network thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjei:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcil;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjei:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzcil;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjek:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcil;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcil;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcil;->zzrk()V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzve()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
