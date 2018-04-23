.class final Lcom/google/android/gms/internal/zzdzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zza;


# instance fields
.field private synthetic zzmlp:Lcom/google/android/gms/internal/zzebm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdzw;Lcom/google/android/gms/internal/zzebm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzz;->zzmlp:Lcom/google/android/gms/internal/zzebm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbf(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdzz;->zzmlp:Lcom/google/android/gms/internal/zzebm;

    const-string v0, "app_in_background"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzebm;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdzz;->zzmlp:Lcom/google/android/gms/internal/zzebm;

    const-string v0, "app_in_background"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzebm;->resume(Ljava/lang/String;)V

    return-void
.end method
