.class final Lcom/google/firebase/database/connection/idl/zzad;
.super Lcom/google/firebase/database/connection/idl/zzl;


# instance fields
.field private synthetic zzmqw:Lcom/google/android/gms/internal/zzebg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzad;->zzmqw:Lcom/google/android/gms/internal/zzebg;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLcom/google/firebase/database/connection/idl/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzad;->zzmqw:Lcom/google/android/gms/internal/zzebg;

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzae;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/zzae;-><init>(Lcom/google/firebase/database/connection/idl/zzad;Lcom/google/firebase/database/connection/idl/zzn;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzebg;->zza(ZLcom/google/android/gms/internal/zzebh;)V

    return-void
.end method
