.class public final Lcom/google/android/gms/internal/zzclf;
.super Lcom/google/android/gms/internal/zzcjl;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzjjc:J

.field private final zzjjd:Lcom/google/android/gms/internal/zzcgs;

.field private final zzjje:Lcom/google/android/gms/internal/zzcgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance p1, Lcom/google/android/gms/internal/zzclg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzclg;-><init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjjd:Lcom/google/android/gms/internal/zzcgs;

    new-instance p1, Lcom/google/android/gms/internal/zzclh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/zzclh;-><init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjje:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjjc:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzclf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzclf;->zzbaw()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzclf;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzclf;->zzbe(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzclf;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzclf;->zzbf(J)V

    return-void
.end method

.method private final zzbav()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclf;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzbaw()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzclf;->zzbs(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgd;->zzaj(J)V

    return-void
.end method

.method private final zzbe(J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzclf;->zzbav()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjjd:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjje:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjjc:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjdf:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjdh:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjdg:Lcom/google/android/gms/internal/zzchz;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzchz;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjdi:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjdg:Lcom/google/android/gms/internal/zzchz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchz;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjjd:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzchx;->zzjde:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzchx;->zzjdi:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcgs;->zzs(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjje:Lcom/google/android/gms/internal/zzcgs;

    const-wide/32 v2, 0x36ee80

    goto :goto_0
.end method

.method private final zzbf(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzclf;->zzbav()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjjd:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjje:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjjc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjdi:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjdi:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzclf;->zzjjc:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_0
    return-void
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

.method public final bridge synthetic zzawj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

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

.method public final zzbs(Z)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjdh:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzclf;->zzjjc:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjdi:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v4, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckc;->zzbao()Lcom/google/android/gms/internal/zzckf;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzckc;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_e"

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/gms/internal/zzcjn;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzclf;->zzjjc:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjje:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgs;->cancel()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzclf;->zzjje:Lcom/google/android/gms/internal/zzcgs;

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzchx;->zzjdi:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcgs;->zzs(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzve()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
