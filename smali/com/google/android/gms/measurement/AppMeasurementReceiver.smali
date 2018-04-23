.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/internal/zzcif;


# instance fields
.field private zziwp:Lcom/google/android/gms/internal/zzcid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final doGoAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zziwp:Lcom/google/android/gms/internal/zzcid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcid;-><init>(Lcom/google/android/gms/internal/zzcif;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zziwp:Lcom/google/android/gms/internal/zzcid;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zziwp:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcid;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
