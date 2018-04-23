.class final Lcom/google/android/gms/internal/zzcgt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzize:Lcom/google/android/gms/internal/zzcgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgt;->zzize:Lcom/google/android/gms/internal/zzcgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzize:Lcom/google/android/gms/internal/zzcgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgs;->zza(Lcom/google/android/gms/internal/zzcgs;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzize:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->zzdx()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgt;->zzize:Lcom/google/android/gms/internal/zzcgs;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgs;->zza(Lcom/google/android/gms/internal/zzcgs;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzize:Lcom/google/android/gms/internal/zzcgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgs;->zzb(Lcom/google/android/gms/internal/zzcgs;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzize:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->run()V

    :cond_1
    return-void
.end method
