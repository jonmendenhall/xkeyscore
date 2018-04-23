.class final Lcom/google/android/gms/internal/zzecl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmqg:Lcom/google/android/gms/internal/zzeck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecl;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecl;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zza(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecl;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzecf;->zza(Lcom/google/android/gms/internal/zzecf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecl;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecl;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v2, "websocket opened"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecl;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzc(Lcom/google/android/gms/internal/zzecf;)V

    return-void
.end method
