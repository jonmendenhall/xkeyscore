.class final Lcom/google/android/gms/common/api/internal/zzdh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfve:Lcom/google/android/gms/common/api/Result;

.field private synthetic zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzdg;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfve:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfot:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzdg;->zzc(Lcom/google/android/gms/common/api/internal/zzdg;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfve:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzdg;->zzd(Lcom/google/android/gms/common/api/internal/zzdg;)Lcom/google/android/gms/common/api/internal/zzdi;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzdg;->zzd(Lcom/google/android/gms/common/api/internal/zzdg;)Lcom/google/android/gms/common/api/internal/zzdi;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/common/api/internal/zzdi;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/internal/zzdi;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfot:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfve:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzdg;->zza(Lcom/google/android/gms/common/api/internal/zzdg;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdg;->zze(Lcom/google/android/gms/common/api/internal/zzdg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzdg;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzdg;->zzd(Lcom/google/android/gms/common/api/internal/zzdg;)Lcom/google/android/gms/common/api/internal/zzdi;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzdg;->zzd(Lcom/google/android/gms/common/api/internal/zzdg;)Lcom/google/android/gms/common/api/internal/zzdi;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/common/api/internal/zzdi;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/zzdi;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfot:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfve:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzdg;->zza(Lcom/google/android/gms/common/api/internal/zzdg;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdg;->zze(Lcom/google/android/gms/common/api/internal/zzdg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzdg;)V

    :cond_1
    return-void

    :goto_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfot:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfve:Lcom/google/android/gms/common/api/Result;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zzdg;->zza(Lcom/google/android/gms/common/api/internal/zzdg;Lcom/google/android/gms/common/api/Result;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzdg;->zze(Lcom/google/android/gms/common/api/internal/zzdg;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdh;->zzfvf:Lcom/google/android/gms/common/api/internal/zzdg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzdg;)V

    :cond_2
    throw v0
.end method
