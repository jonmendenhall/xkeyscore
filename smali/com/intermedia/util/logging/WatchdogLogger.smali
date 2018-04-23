.class Lcom/intermedia/util/logging/WatchdogLogger;
.super Ljava/lang/Object;
.source "WatchdogLogger.java"

# interfaces
.implements Lcom/intermedia/util/logging/DebugLogger;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# static fields
.field private static final TRUETIME_INIT_TIMEOUT:J = 0x64L


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final fileSupplier:Lcom/intermedia/util/logging/WatchdogFileSupplier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private fos:Ljava/io/FileOutputStream;

.field private final trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/util/logging/WatchdogFileSupplier;Lcom/intermedia/initializers/TrueTimeInitializer;)V
    .locals 0
    .param p1    # Lcom/intermedia/util/logging/WatchdogFileSupplier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/initializers/TrueTimeInitializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fileSupplier:Lcom/intermedia/util/logging/WatchdogFileSupplier;

    .line 43
    iput-object p2, p0, Lcom/intermedia/util/logging/WatchdogLogger;->trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static final synthetic lambda$log$0$WatchdogLogger(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private logInternal(Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 3
    .param p1    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->now()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 62
    iget-object v1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;-><init>(Lcom/intermedia/util/logging/WatchdogLogger;Lorg/joda/time/DateTime;Lcom/intermedia/util/logging/events/LoggableEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$log$1$WatchdogLogger(Lcom/intermedia/util/logging/events/LoggableEvent;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/intermedia/util/logging/WatchdogLogger;->logInternal(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method

.method final synthetic lambda$log$2$WatchdogLogger(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;

    invoke-virtual {p1}, Lcom/intermedia/initializers/TrueTimeInitializer;->run()V

    return-void
.end method

.method final synthetic lambda$logInternal$3$WatchdogLogger(Lorg/joda/time/DateTime;Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 3
    .param p2    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fos:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fileSupplier:Lcom/intermedia/util/logging/WatchdogFileSupplier;

    invoke-virtual {v0}, Lcom/intermedia/util/logging/WatchdogFileSupplier;->get()Ljava/io/File;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fos:Ljava/io/FileOutputStream;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fos:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fos:Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/format/DateTimeFormatter;->withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/joda/time/DateTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    iget-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fos:Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/intermedia/util/FileUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger;->fos:Ljava/io/FileOutputStream;

    :cond_1
    :goto_0
    return-void
.end method

.method public log(Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 3
    .param p1    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    sget-object v0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$0;->$instance:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex/Flowable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 50
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 51
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    .line 52
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lio/reactivex/Flowable;->cache()Lio/reactivex/Flowable;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$2;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;

    invoke-direct {v2, p0, p1}, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;-><init>(Lcom/intermedia/util/logging/WatchdogLogger;Lcom/intermedia/util/logging/events/LoggableEvent;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 57
    sget-object p1, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$4;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$5;-><init>(Lcom/intermedia/util/logging/WatchdogLogger;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
