.class public Lcom/google/firebase/auth/internal/FederatedSignInActivity;
.super Landroid/support/v4/app/FragmentActivity;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;
    }
.end annotation


# static fields
.field private static zzmhx:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/FederatedSignInActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzgo(I)V

    return-void
.end method

.method private final zzgo(I)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzmhx:Z

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.SIGN_IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "com.google.firebase.auth.internal.GET_CRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "IdpSignInActivity"

    const-string v1, "Unknown action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->finish()V

    return-void

    :cond_1
    sget-boolean v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzmhx:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzmhx:Z

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.firebase.auth.api.gms.ui.START_WEB_SIGN_IN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const v0, 0xa003

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "IdpSignInActivity"

    const-string v0, "Could not launch web sign-in Intent. Google Play service is unavailable"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzgo(I)V

    :cond_3
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "com.google.firebase.auth.internal.WEB_SIGN_IN_FAILED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "IdpSignInActivity"

    const-string v0, "Web sign-in failed, finishing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->zzgo(I)V

    return-void

    :cond_0
    const-string v0, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    sget-object v2, Lcom/google/android/gms/internal/zzdyy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfr;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbfq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdyy;

    new-instance v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;-><init>(Lcom/google/android/gms/internal/zzdyy;Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
