.class final Lcom/google/android/gms/internal/zzcgh;
.super Ljava/lang/Object;


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private zzcwz:Ljava/lang/String;

.field private zzdra:Ljava/lang/String;

.field private zzggb:Ljava/lang/String;

.field private final zziwf:Lcom/google/android/gms/internal/zzcim;

.field private zziww:Ljava/lang/String;

.field private zziwx:Ljava/lang/String;

.field private zziwy:J

.field private zziwz:J

.field private zzixa:J

.field private zzixb:J

.field private zzixc:Ljava/lang/String;

.field private zzixd:J

.field private zzixe:J

.field private zzixf:Z

.field private zzixg:J

.field private zzixh:Z

.field private zzixi:J

.field private zzixj:J

.field private zzixk:J

.field private zzixl:J

.field private zzixm:J

.field private zzixn:J

.field private zzixo:Ljava/lang/String;

.field private zzixp:Z

.field private zzixq:J

.field private zzixr:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgh;->mAppId:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzggb:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzcwz:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzdra:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzdra:Ljava/lang/String;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixf:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixf:Z

    return-void
.end method

.method public final zzal(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwz:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwz:J

    return-void
.end method

.method public final zzam(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixa:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixa:J

    return-void
.end method

.method public final zzan(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixb:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixb:J

    return-void
.end method

.method public final zzao(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixd:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixd:J

    return-void
.end method

.method public final zzap(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixe:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixe:J

    return-void
.end method

.method public final zzaq(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcgh;->zziwy:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwy:J

    return-void
.end method

.method public final zzar(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixq:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixq:J

    return-void
.end method

.method public final zzas(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixr:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixr:J

    return-void
.end method

.method public final zzat(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixi:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixi:J

    return-void
.end method

.method public final zzau(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixj:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixj:J

    return-void
.end method

.method public final zzav(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixk:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixk:J

    return-void
.end method

.method public final zzaw(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixl:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixl:J

    return-void
.end method

.method public final zzax(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixn:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixn:J

    return-void
.end method

.method public final zzaxb()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    return-void
.end method

.method public final zzaxc()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziww:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaxd()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaxe()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwz:J

    return-wide v0
.end method

.method public final zzaxf()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixa:J

    return-wide v0
.end method

.method public final zzaxg()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixb:J

    return-wide v0
.end method

.method public final zzaxh()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaxi()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixd:J

    return-wide v0
.end method

.method public final zzaxj()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixe:J

    return-wide v0
.end method

.method public final zzaxk()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixf:Z

    return v0
.end method

.method public final zzaxl()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwy:J

    return-wide v0
.end method

.method public final zzaxm()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixq:J

    return-wide v0
.end method

.method public final zzaxn()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixr:J

    return-wide v0
.end method

.method public final zzaxo()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwy:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Bundle index overflow. appId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgh;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwy:J

    return-void
.end method

.method public final zzaxp()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixi:J

    return-wide v0
.end method

.method public final zzaxq()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixj:J

    return-wide v0
.end method

.method public final zzaxr()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixk:J

    return-wide v0
.end method

.method public final zzaxs()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixl:J

    return-wide v0
.end method

.method public final zzaxt()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixn:J

    return-wide v0
.end method

.method public final zzaxu()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixm:J

    return-wide v0
.end method

.method public final zzaxv()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaxw()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixo:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcgh;->zziw(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzaxx()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixg:J

    return-wide v0
.end method

.method public final zzaxy()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixh:Z

    return v0
.end method

.method public final zzay(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixm:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixm:J

    return-void
.end method

.method public final zzaz(J)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixg:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixg:J

    return-void
.end method

.method public final zzbl(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixh:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixh:Z

    return-void
.end method

.method public final zzir(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzggb:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzggb:Ljava/lang/String;

    return-void
.end method

.method public final zzis(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzcwz:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzcwz:Ljava/lang/String;

    return-void
.end method

.method public final zzit(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zziww:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zziww:Ljava/lang/String;

    return-void
.end method

.method public final zziu(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwx:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zziwx:Ljava/lang/String;

    return-void
.end method

.method public final zziv(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixc:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixc:Ljava/lang/String;

    return-void
.end method

.method public final zziw(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixo:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzixp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgh;->zzixo:Ljava/lang/String;

    return-void
.end method

.method public final zzvj()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgh;->zzdra:Ljava/lang/String;

    return-object v0
.end method
