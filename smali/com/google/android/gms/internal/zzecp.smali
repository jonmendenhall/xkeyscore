.class public final Lcom/google/android/gms/internal/zzecp;
.super Ljava/lang/Object;


# instance fields
.field private final random:Ljava/util/Random;

.field private final zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmra:J

.field private final zzmrb:J

.field private final zzmrc:D

.field private final zzmrd:D

.field private zzmre:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzmrf:J

.field private zzmrg:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecp;->random:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzecp;->zzmra:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrb:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzecp;->zzmrd:D

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzecp;->zzmrc:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDDLcom/google/android/gms/internal/zzecq;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/zzecp;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDD)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzecp;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Cancelling existing retry attempt"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "No existing retry attempt to cancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    return-void
.end method

.method public final zzbvi()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    return-void
.end method

.method public final zzbvj()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    return-void
.end method

.method public final zzn(Ljava/lang/Runnable;)V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/zzecq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzecq;-><init>(Lcom/google/android/gms/internal/zzecp;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Cancelling previous scheduled retry"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1, v4}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmra:J

    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrd:D

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrb:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_0

    :goto_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrc:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    long-to-double v5, v5

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrc:D

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    long-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecp;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-long v3, v3

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v5, "Scheduling retry in %dms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v5, v1, v6}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
