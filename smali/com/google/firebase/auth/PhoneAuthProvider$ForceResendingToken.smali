.class public Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/PhoneAuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForceResendingToken"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/zzc;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzc;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    return-void
.end method

.method public static zzbri()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    invoke-direct {v0}, Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;-><init>()V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
