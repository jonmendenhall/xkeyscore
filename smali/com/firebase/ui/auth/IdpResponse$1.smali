.class final Lcom/firebase/ui/auth/IdpResponse$1;
.super Ljava/lang/Object;
.source "IdpResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/IdpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/firebase/ui/auth/IdpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 7

    .line 182
    new-instance v6, Lcom/firebase/ui/auth/IdpResponse;

    const-class v0, Lcom/firebase/ui/auth/data/model/User;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/firebase/ui/auth/data/model/User;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/firebase/ui/auth/data/model/FirebaseUiException;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/data/model/FirebaseUiException;Lcom/firebase/ui/auth/IdpResponse$1;)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/IdpResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/firebase/ui/auth/IdpResponse;
    .locals 0

    .line 192
    new-array p1, p1, [Lcom/firebase/ui/auth/IdpResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/IdpResponse$1;->newArray(I)[Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    return-object p1
.end method
