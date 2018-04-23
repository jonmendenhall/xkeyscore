.class final Lcom/google/android/gms/internal/zzclg;
.super Lcom/google/android/gms/internal/zzcgs;


# instance fields
.field private synthetic zzjjf:Lcom/google/android/gms/internal/zzclf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclg;->zzjjf:Lcom/google/android/gms/internal/zzclf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgs;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclg;->zzjjf:Lcom/google/android/gms/internal/zzclf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Session started, time"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjdg:Lcom/google/android/gms/internal/zzchz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzchz;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_s"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcjn;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjdh:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    return-void
.end method
