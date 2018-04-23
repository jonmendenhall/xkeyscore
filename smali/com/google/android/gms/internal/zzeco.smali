.class final Lcom/google/android/gms/internal/zzeco;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmqg:Lcom/google/android/gms/internal/zzeck;

.field private synthetic zzmqi:Lcom/google/android/gms/internal/zzela;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeck;Lcom/google/android/gms/internal/zzela;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzela;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzela;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v2, "WebSocket reached EOF."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v2, "WebSocket error."

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    new-array v1, v1, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zze(Lcom/google/android/gms/internal/zzecf;)V

    return-void
.end method
