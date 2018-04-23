.class final Lcom/google/android/gms/internal/zzcko;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjgs:Lcom/google/android/gms/internal/zzcha;

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjim:Z

.field private synthetic zzjin:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;ZZLcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcko;->zzjim:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcko;->zzjin:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcko;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcko;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcko;->zzimf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcko;->zzjim:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcko;->zzjin:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcko;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcko;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzche;Lcom/google/android/gms/internal/zzbfm;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcko;->zzimf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcko;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcko;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcko;->zzjgs:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcko;->zzimf:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazk()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V

    return-void
.end method
