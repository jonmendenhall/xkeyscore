.class final Lcom/google/android/gms/internal/zzckv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjis:Lcom/google/android/gms/internal/zzche;

.field private synthetic zzjit:Lcom/google/android/gms/internal/zzcku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcku;Lcom/google/android/gms/internal/zzche;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckv;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckv;->zzjis:Lcom/google/android/gms/internal/zzche;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckv;->zzjit:Lcom/google/android/gms/internal/zzcku;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckv;->zzjit:Lcom/google/android/gms/internal/zzcku;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzcku;->zza(Lcom/google/android/gms/internal/zzcku;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckv;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckg;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckv;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckv;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckv;->zzjis:Lcom/google/android/gms/internal/zzche;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzche;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
