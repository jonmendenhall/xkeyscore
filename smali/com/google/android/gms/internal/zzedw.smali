.class final Lcom/google/android/gms/internal/zzedw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmto:Lcom/google/firebase/database/DataSnapshot;

.field private synthetic zzmtr:Lcom/google/android/gms/internal/zzeeo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedv;Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedw;->zzmtr:Lcom/google/android/gms/internal/zzeeo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzedw;->zzmto:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedw;->zzmtr:Lcom/google/android/gms/internal/zzeeo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeo;->zzh(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedw;->zzmto:Lcom/google/firebase/database/DataSnapshot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
