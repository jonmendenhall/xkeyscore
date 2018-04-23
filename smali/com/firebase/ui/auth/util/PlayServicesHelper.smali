.class public Lcom/firebase/ui/auth/util/PlayServicesHelper;
.super Ljava/lang/Object;
.source "PlayServicesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    return-object v0
.end method

.method public static makePlayServicesAvailable(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 28
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x0

    return p0
.end method
