.class final Lcom/google/android/gms/internal/zzeck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzecj;
.implements Lcom/google/android/gms/internal/zzekz;


# instance fields
.field final synthetic zzmqe:Lcom/google/android/gms/internal/zzecf;

.field private zzmqf:Lcom/google/android/gms/internal/zzeku;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzeku;->zza(Lcom/google/android/gms/internal/zzekz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;Lcom/google/android/gms/internal/zzecg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeck;-><init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->close()V

    return-void
.end method

.method public final connect()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->connect()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    const-string v2, "Error connecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->close()V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->zzcaw()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzejc;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClose()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzecn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzecn;-><init>(Lcom/google/android/gms/internal/zzeck;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzela;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzeco;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzeco;-><init>(Lcom/google/android/gms/internal/zzeck;Lcom/google/android/gms/internal/zzela;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelc;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelc;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "ws message: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzecm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzecm;-><init>(Lcom/google/android/gms/internal/zzeck;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbvg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzecl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzecl;-><init>(Lcom/google/android/gms/internal/zzeck;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzps(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeku;->zzps(Ljava/lang/String;)V

    return-void
.end method
