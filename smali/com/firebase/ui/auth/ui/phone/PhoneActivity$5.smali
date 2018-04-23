.class synthetic Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;
.super Ljava/lang/Object;
.source "PhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->values()[Lcom/firebase/ui/auth/util/FirebaseAuthError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    :try_start_0
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    sget-object v1, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ERROR_INVALID_PHONE_NUMBER:Lcom/firebase/ui/auth/util/FirebaseAuthError;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    sget-object v1, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ERROR_TOO_MANY_REQUESTS:Lcom/firebase/ui/auth/util/FirebaseAuthError;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    sget-object v1, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ERROR_QUOTA_EXCEEDED:Lcom/firebase/ui/auth/util/FirebaseAuthError;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    sget-object v1, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ERROR_INVALID_VERIFICATION_CODE:Lcom/firebase/ui/auth/util/FirebaseAuthError;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$5;->$SwitchMap$com$firebase$ui$auth$util$FirebaseAuthError:[I

    sget-object v1, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ERROR_SESSION_EXPIRED:Lcom/firebase/ui/auth/util/FirebaseAuthError;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/FirebaseAuthError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
