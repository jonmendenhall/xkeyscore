.class final Lcom/firebase/ui/auth/data/model/FlowParameters$1;
.super Ljava/lang/Object;
.source "FlowParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/data/model/FlowParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/firebase/ui/auth/data/model/FlowParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/firebase/ui/auth/data/model/FlowParameters;
    .locals 12

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    sget-object v0, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    .line 136
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v7

    .line 137
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v8

    goto :goto_2

    :cond_2
    move p1, v7

    .line 139
    :goto_2
    new-instance v11, Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-object v0, v11

    move v7, v9

    move v8, v10

    move v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/firebase/ui/auth/data/model/FlowParameters;-><init>(Ljava/lang/String;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/data/model/FlowParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/firebase/ui/auth/data/model/FlowParameters;
    .locals 0

    .line 153
    new-array p1, p1, [Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/data/model/FlowParameters$1;->newArray(I)[Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    return-object p1
.end method
