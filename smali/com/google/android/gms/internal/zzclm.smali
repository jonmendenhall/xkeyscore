.class final Lcom/google/android/gms/internal/zzclm;
.super Lcom/google/android/gms/internal/zzcgs;


# instance fields
.field private synthetic zzjjh:Lcom/google/android/gms/internal/zzcll;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcll;Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclm;->zzjjh:Lcom/google/android/gms/internal/zzcll;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcgs;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclm;->zzjjh:Lcom/google/android/gms/internal/zzcll;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclm;->zzjjh:Lcom/google/android/gms/internal/zzcll;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Sending upload intent from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclm;->zzjjh:Lcom/google/android/gms/internal/zzcll;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclm;->zzjjh:Lcom/google/android/gms/internal/zzcll;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
