.class final Lcom/google/android/gms/internal/zzdzu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmdk:Lcom/google/firebase/internal/zzc;

.field private synthetic zzmlk:Lcom/google/android/gms/internal/zzdzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdzt;Lcom/google/firebase/internal/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzu;->zzmlk:Lcom/google/android/gms/internal/zzdzt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzu;->zzmdk:Lcom/google/firebase/internal/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzu;->zzmlk:Lcom/google/android/gms/internal/zzdzt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdzt;->zzmli:Lcom/google/android/gms/internal/zzecv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzu;->zzmdk:Lcom/google/firebase/internal/zzc;

    invoke-virtual {v1}, Lcom/google/firebase/internal/zzc;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzecv;->zzpu(Ljava/lang/String;)V

    return-void
.end method
