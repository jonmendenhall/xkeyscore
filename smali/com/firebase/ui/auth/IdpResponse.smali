.class public Lcom/firebase/ui/auth/IdpResponse;
.super Ljava/lang/Object;
.source "IdpResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/IdpResponse$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/firebase/ui/auth/IdpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mException:Lcom/firebase/ui/auth/data/model/FirebaseUiException;

.field private final mSecret:Ljava/lang/String;

.field private final mToken:Ljava/lang/String;

.field private final mUser:Lcom/firebase/ui/auth/data/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse$1;

    invoke-direct {v0}, Lcom/firebase/ui/auth/IdpResponse$1;-><init>()V

    sput-object v0, Lcom/firebase/ui/auth/IdpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V
    .locals 1
    .param p1    # Lcom/firebase/ui/auth/data/model/FirebaseUiException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V

    return-void
.end method

.method private constructor <init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/firebase/ui/auth/data/model/User;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/firebase/ui/auth/IdpResponse;->mUser:Lcom/firebase/ui/auth/data/model/User;

    .line 59
    iput-object p2, p0, Lcom/firebase/ui/auth/IdpResponse;->mToken:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/firebase/ui/auth/IdpResponse;->mSecret:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/firebase/ui/auth/IdpResponse;->mException:Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/data/model/FirebaseUiException;Lcom/firebase/ui/auth/IdpResponse$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V

    return-void
.end method

.method public static fromError(Lcom/firebase/ui/auth/data/model/FirebaseUiException;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 1
    .param p0    # Lcom/firebase/ui/auth/data/model/FirebaseUiException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V

    return-object v0
.end method

.method public static fromResultIntent(Landroid/content/Intent;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "extra_idp_response"

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/firebase/ui/auth/IdpResponse;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getErrorCodeIntent(I)Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse;

    new-instance v1, Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/data/model/FirebaseUiException;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/FirebaseUiException;)V

    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mException:Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/FirebaseUiException;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getException()Lcom/firebase/ui/auth/data/model/FirebaseUiException;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mException:Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    return-object v0
.end method

.method public getIdpSecret()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getIdpToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/firebase/ui/auth/data/model/User;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mUser:Lcom/firebase/ui/auth/data/model/User;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mException:Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_idp_response"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    iget-object p2, p0, Lcom/firebase/ui/auth/IdpResponse;->mToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/firebase/ui/auth/IdpResponse;->mSecret:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/firebase/ui/auth/IdpResponse;->mException:Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
