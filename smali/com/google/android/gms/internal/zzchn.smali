.class final Lcom/google/android/gms/internal/zzchn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjcd:Ljava/lang/String;

.field private synthetic zzjce:Lcom/google/android/gms/internal/zzchm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchm;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchn;->zzjce:Lcom/google/android/gms/internal/zzchm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchn;->zzjcd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchn;->zzjce:Lcom/google/android/gms/internal/zzchm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchm;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchn;->zzjce:Lcom/google/android/gms/internal/zzchm;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzchm;->zzk(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcq:Lcom/google/android/gms/internal/zzcib;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchn;->zzjcd:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcib;->zzf(Ljava/lang/String;J)V

    return-void
.end method
