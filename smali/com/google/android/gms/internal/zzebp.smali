.class final Lcom/google/android/gms/internal/zzebp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmos:Z

.field final synthetic zzmot:Lcom/google/android/gms/internal/zzebo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzebp;->zzmos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "Trying to fetch auth token"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpb:Lcom/google/android/gms/internal/zzeby;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Not in disconnected state: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzebo;->zzb(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzeby;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzebj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    sget-object v1, Lcom/google/android/gms/internal/zzeby;->zzmpc:Lcom/google/android/gms/internal/zzeby;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzebo;->zza(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzeby;)Lcom/google/android/gms/internal/zzeby;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzc(Lcom/google/android/gms/internal/zzebo;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzebo;->zzd(Lcom/google/android/gms/internal/zzebo;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebp;->zzmot:Lcom/google/android/gms/internal/zzebo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzebo;->zzf(Lcom/google/android/gms/internal/zzebo;)Lcom/google/android/gms/internal/zzebg;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzebp;->zzmos:Z

    new-instance v4, Lcom/google/android/gms/internal/zzebq;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/zzebq;-><init>(Lcom/google/android/gms/internal/zzebp;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzebg;->zza(ZLcom/google/android/gms/internal/zzebh;)V

    return-void
.end method
