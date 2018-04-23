.class final Lcom/google/android/gms/internal/zzdyd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdyg;


# instance fields
.field private synthetic zzmfz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdya;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdyd;->zzmfz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdyd;->zzmfz:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V

    return-void
.end method
