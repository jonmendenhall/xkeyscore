.class final Lcom/google/android/gms/internal/zzckr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjgq:Ljava/lang/String;

.field private synthetic zzjgr:Ljava/lang/String;

.field private synthetic zzjhf:Z

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjik:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckr;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzckr;->zzimf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzckr;->zzjgq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzckr;->zzjgr:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzckr;->zzjhf:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzckr;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to get user properties"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckr;->zzimf:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckr;->zzjgq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckr;->zzjgr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckr;->zzimf:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckr;->zzjgq:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckr;->zzjgr:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzckr;->zzjhf:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/zzckr;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzche;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzcgi;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckr;->zzimf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckr;->zzjgq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckr;->zzjgr:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzckr;->zzjhf:Z

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzche;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckr;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckr;->zzimf:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckr;->zzjgq:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_2

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckr;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
