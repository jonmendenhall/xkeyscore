.class final Lcom/google/android/gms/internal/zzcks;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjgt:Lcom/google/android/gms/internal/zzcln;

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjin:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;ZLcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcks;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcks;->zzjin:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcks;->zzjgt:Lcom/google/android/gms/internal/zzcln;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcks;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcks;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcks;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcks;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcks;->zzjin:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcks;->zzjgt:Lcom/google/android/gms/internal/zzcln;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcks;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzche;Lcom/google/android/gms/internal/zzbfm;Lcom/google/android/gms/internal/zzcgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcks;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V

    return-void
.end method
