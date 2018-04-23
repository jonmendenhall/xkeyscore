.class final Lcom/google/android/gms/internal/zzebw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmot:Lcom/google/android/gms/internal/zzebo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebw;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebw;->zzmot:Lcom/google/android/gms/internal/zzebo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebw;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzp(Lcom/google/android/gms/internal/zzebo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebw;->zzmot:Lcom/google/android/gms/internal/zzebo;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzebo;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzebw;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzn(Lcom/google/android/gms/internal/zzebo;)V

    return-void
.end method
