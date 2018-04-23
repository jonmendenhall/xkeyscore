.class final Lcom/google/android/gms/internal/zzcie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic zzdop:Landroid/content/BroadcastReceiver$PendingResult;

.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcim;

.field private synthetic zzjdu:J

.field private synthetic zzjdv:Landroid/os/Bundle;

.field private synthetic zzjdw:Lcom/google/android/gms/internal/zzchm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcid;Lcom/google/android/gms/internal/zzcim;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/internal/zzchm;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcie;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcie;->zzjdu:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcie;->zzjdv:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcie;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcie;->zzjdw:Lcom/google/android/gms/internal/zzchm;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcie;->zzdop:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcie;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_fot"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzclp;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzcie;->zzjdu:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    cmp-long v0, v5, v1

    if-gtz v0, :cond_2

    :cond_1
    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    :cond_2
    cmp-long v0, v5, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzjdv:Landroid/os/Bundle;

    const-string v1, "click_timestamp"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_cmp"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcie;->zzjdv:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzjdw:Lcom/google/android/gms/internal/zzchm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzdop:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzdop:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_4
    return-void
.end method
