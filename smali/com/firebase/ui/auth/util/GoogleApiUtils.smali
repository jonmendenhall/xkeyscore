.class public final Lcom/firebase/ui/auth/util/GoogleApiUtils;
.super Ljava/lang/Object;
.source "GoogleApiUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instance for you!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getCredentialsClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 20
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object p0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object p0

    :goto_0
    return-object p0
.end method
